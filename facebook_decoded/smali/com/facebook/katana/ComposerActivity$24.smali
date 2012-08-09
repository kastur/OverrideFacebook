.class Lcom/facebook/katana/ComposerActivity$24;
.super Landroid/text/style/ClickableSpan;
.source "ComposerActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$24;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$24;->a:Lcom/facebook/katana/ComposerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ComposerActivity;->openTimeSelector(Landroid/view/View;)V

    .line 1826
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$24;->a:Lcom/facebook/katana/ComposerActivity;

    iget-object v0, v0, Lcom/facebook/katana/ComposerActivity;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1827
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$24;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->p(Lcom/facebook/katana/ComposerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/ComposerActivity$24$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/ComposerActivity$24$1;-><init>(Lcom/facebook/katana/ComposerActivity$24;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1833
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 1838
    return-void
.end method
