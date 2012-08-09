.class public abstract Lcom/facebook/orca/activity/ConfirmActionActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "ConfirmActionActivity.java"


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/orca/activity/ConfirmActionParams;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 25
    invoke-virtual {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 28
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 32
    sget v0, Lcom/facebook/orca/R$layout;->orca_confirm_action:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->setContentView(I)V

    .line 34
    sget v0, Lcom/facebook/orca/R$id;->confirm_title:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->e:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/facebook/orca/R$id;->confirm_message:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->f:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/facebook/orca/R$id;->confirm_okay_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->g:Landroid/widget/Button;

    .line 37
    sget v0, Lcom/facebook/orca/R$id;->confirm_neutral_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->h:Landroid/widget/Button;

    .line 38
    sget v0, Lcom/facebook/orca/R$id;->confirm_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->i:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/facebook/orca/activity/ConfirmActionParams;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/ConfirmActionActivity$1;-><init>(Lcom/facebook/orca/activity/ConfirmActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/ConfirmActionActivity$2;-><init>(Lcom/facebook/orca/activity/ConfirmActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/facebook/orca/activity/ConfirmActionActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/orca/activity/ConfirmActionActivity$3;-><init>(Lcom/facebook/orca/activity/ConfirmActionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/activity/ConfirmActionActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected final i()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/activity/ConfirmActionActivity;->finish()V

    .line 84
    return-void
.end method
