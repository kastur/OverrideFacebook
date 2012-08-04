.class Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;
.super Ljava/lang/Object;
.source "PlacesNearbyAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/view/ViewGroup;

.field private synthetic b:I

.field private synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyAdapter;Landroid/view/ViewGroup;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->a:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->b:I

    iput-object p4, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->a:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    iget-object v1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyAdapter$1;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    return-void

    .line 151
    :cond_0
    const v0, 0x7f090070

    goto :goto_0
.end method
