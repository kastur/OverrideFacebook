.class Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;
.super Ljava/lang/Object;
.source "AddPlaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPlaceActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;->b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    iput-object p2, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;->b:Lcom/facebook/katana/activity/places/AddPlaceActivity$1;

    iget-object v0, v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1;->a:Lcom/facebook/katana/activity/places/AddPlaceActivity;

    const v1, 0x7f080288

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/places/AddPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 166
    iget-object v1, p0, Lcom/facebook/katana/activity/places/AddPlaceActivity$1$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
