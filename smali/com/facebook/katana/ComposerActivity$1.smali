.class Lcom/facebook/katana/ComposerActivity$1;
.super Lcom/facebook/katana/ui/BaseAnimationListener;
.source "ComposerActivity.java"


# instance fields
.field private synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p2, p0, Lcom/facebook/katana/ComposerActivity$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/facebook/katana/ui/BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$1;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    return-void
.end method
