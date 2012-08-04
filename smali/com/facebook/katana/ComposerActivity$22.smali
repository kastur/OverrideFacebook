.class Lcom/facebook/katana/ComposerActivity$22;
.super Landroid/text/style/ClickableSpan;
.source "ComposerActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$22;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$22;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->o(Lcom/facebook/katana/ComposerActivity;)V

    .line 1784
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    return-void
.end method
