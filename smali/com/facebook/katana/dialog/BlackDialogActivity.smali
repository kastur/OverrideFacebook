.class abstract Lcom/facebook/katana/dialog/BlackDialogActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "BlackDialogActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_0
    const v0, 0x7f03000a

    .line 32
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    const v0, 0x7f03000b

    move v1, v0

    .line 37
    :goto_0
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    const v0, 0x7f080046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance v2, Lcom/facebook/katana/dialog/BlackDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/dialog/BlackDialogActivity$1;-><init>(Lcom/facebook/katana/dialog/BlackDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    const v0, 0x7f080047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v1, Lcom/facebook/katana/dialog/BlackDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/dialog/BlackDialogActivity$2;-><init>(Lcom/facebook/katana/dialog/BlackDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_2
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 65
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->f()V

    .line 67
    return-void

    .line 34
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/facebook/katana/dialog/BlackDialogActivity$BlackDialogParameters;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot have cancel button without confirm button"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method protected abstract f()V
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method protected final h()V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/facebook/katana/dialog/BlackDialogActivity;->finish()V

    .line 20
    return-void
.end method
