.class public Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PlacesNearbyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 836
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookPlace;)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 861
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/AlertDialogs$MenuOption;

    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$1;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Lcom/facebook/katana/model/FacebookPlace;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;)V

    aput-object v1, v0, v7

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;

    const v3, 0x7f0b041d

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->OFFENSIVE:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    new-array v5, v7, [Lcom/facebook/katana/model/FacebookPlace;

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/lang/String;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;Ljava/util/List;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;

    const v3, 0x7f0b041f

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->NOT_PUBLIC:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    new-array v5, v7, [Lcom/facebook/katana/model/FacebookPlace;

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/lang/String;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;Ljava/util/List;)V

    aput-object v2, v0, v1

    .line 889
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;[Lcom/facebook/katana/AlertDialogs$MenuOption;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)",
            "Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;"
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;-><init>()V

    .line 819
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 820
    const-string v2, "suggested_places_list"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 821
    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->e(Landroid/os/Bundle;)V

    .line 822
    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 893
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/katana/AlertDialogs$MenuOption;

    new-instance v1, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$3;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/util/ArrayList;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;

    const v3, 0x7f0b041d

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->OFFENSIVE:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/lang/String;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;Ljava/util/List;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;

    const v3, 0x7f0b0420

    invoke-virtual {p0, v3}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->NOT_PUBLIC:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$PlacesFlagMenuOption;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;Ljava/lang/String;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;Ljava/util/List;)V

    aput-object v2, v0, v1

    .line 920
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;[Lcom/facebook/katana/AlertDialogs$MenuOption;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "suggested_places_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->a(Lcom/facebook/katana/model/FacebookPlace;)Landroid/app/Dialog;

    move-result-object v0

    .line 832
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->b(Ljava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
