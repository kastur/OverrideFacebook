.class Lcom/facebook/katana/activity/FacebookActivityDelegate$15;
.super Ljava/lang/Object;
.source "FacebookActivityDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->p(Lcom/facebook/katana/activity/FacebookActivityDelegate;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    :goto_0
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FacebookActivityDelegate$15;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-static {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->g(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V

    goto :goto_0
.end method
