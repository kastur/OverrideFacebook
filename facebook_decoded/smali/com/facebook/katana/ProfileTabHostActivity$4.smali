.class Lcom/facebook/katana/ProfileTabHostActivity$4;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    iput-object p2, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->a:Landroid/view/View;

    const v1, 0x7f08027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v1}, Lcom/facebook/katana/ProfileTabHostActivity;->d(Lcom/facebook/katana/ProfileTabHostActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/service/method/UserSetContactInfo;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$4;->b:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->removeDialog(I)V

    .line 596
    return-void
.end method
