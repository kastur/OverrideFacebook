.class Lcom/facebook/katana/ComposerActivity$23;
.super Landroid/text/style/ClickableSpan;
.source "ComposerActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$23;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$23;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/ComposerActivity;->launchPlacesNearby(Landroid/view/View;)V

    .line 1806
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 1811
    return-void
.end method
