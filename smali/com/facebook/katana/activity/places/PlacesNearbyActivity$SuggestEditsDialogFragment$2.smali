.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;
.super Lcom/facebook/katana/AlertDialogs$MenuOption;
.source "PlacesNearbyActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-direct {p0}, Lcom/facebook/katana/AlertDialogs$MenuOption;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment$2;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$SuggestEditsDialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0421

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 878
    return-void
.end method
