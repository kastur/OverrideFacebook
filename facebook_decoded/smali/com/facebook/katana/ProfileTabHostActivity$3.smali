.class Lcom/facebook/katana/ProfileTabHostActivity$3;
.super Ljava/lang/Object;
.source "ProfileTabHostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ProfileTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 603
    return-void
.end method
