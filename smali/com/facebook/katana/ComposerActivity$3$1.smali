.class Lcom/facebook/katana/ComposerActivity$3$1;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 747
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 748
    return-void
.end method
