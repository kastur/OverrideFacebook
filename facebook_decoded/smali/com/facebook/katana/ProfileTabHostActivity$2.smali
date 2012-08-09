.class Lcom/facebook/katana/ProfileTabHostActivity$2;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:[Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

.field private synthetic b:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;[Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    iput-object p2, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->a:[Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->a:[Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    aget-object v1, v0, p2

    .line 543
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 544
    const-string v2, "extra_place"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 546
    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 547
    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v2}, Lcom/facebook/katana/ProfileTabHostActivity;->d(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/katana/service/method/PlacesFlag;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)Ljava/lang/String;

    .line 553
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 554
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileTabHostActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 555
    const v2, 0x7f030016

    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    const v3, 0x7f080078

    invoke-virtual {v0, v3}, Lcom/facebook/katana/ProfileTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 559
    const v0, 0x7f080079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 561
    const v2, 0x7f02007c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    const v0, 0x7f080051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 564
    const v2, 0x7f0b03e3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 565
    new-instance v0, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$2;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-virtual {v2}, Lcom/facebook/katana/ProfileTabHostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 567
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 569
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 570
    return-void
.end method
