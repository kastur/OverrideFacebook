.class public Lcom/facebook/orca/common/dialogs/ChoiceDialog;
.super Landroid/app/Dialog;
.source "ChoiceDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    sget v0, Lcom/facebook/orca/R$id;->dialog_button_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->c:I

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/dialogs/ChoiceDialog;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    sget v0, Lcom/facebook/orca/R$layout;->orca_choice_dialog:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->setContentView(I)V

    .line 54
    new-instance v6, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;

    invoke-direct {v6, p0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;-><init>(Lcom/facebook/orca/common/dialogs/ChoiceDialog;)V

    .line 61
    sget v0, Lcom/facebook/orca/R$id;->choice_dialog_button_container:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    invoke-virtual {p0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move v4, v5

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;

    .line 65
    sget v3, Lcom/facebook/orca/R$layout;->orca_choice_dialog_button:I

    invoke-virtual {v1, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 67
    invoke-static {v2}, Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;->a(Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v2, Lcom/facebook/orca/R$id;->dialog_button_index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v2, v7}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
