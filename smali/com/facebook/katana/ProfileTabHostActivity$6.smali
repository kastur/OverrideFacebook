.class Lcom/facebook/katana/ProfileTabHostActivity$6;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/facebook/katana/ProfileTabHostActivity$6;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 617
    iget-object v0, p0, Lcom/facebook/katana/ProfileTabHostActivity$6;->a:Lcom/facebook/katana/ProfileTabHostActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ProfileTabHostActivity;->showDialog(I)V

    .line 618
    return-void
.end method
