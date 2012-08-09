.class Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;
.super Ljava/lang/Object;
.source "AddPlaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;

.field private synthetic b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPlaceActivity$1;Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;->b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    iput-object p2, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;->a:Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;->b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    iget-object v0, v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->b(Lcom/facebook/katana/activity/places/AddPlaceActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;->a:Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;

    iget-wide v1, v1, Lcom/facebook/katana/service/method/PlacesCreateException$SimilarPlace;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$2;->b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    iget-object v0, v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->c(Lcom/facebook/katana/activity/places/AddPlaceActivity;)V

    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    return-void
.end method
