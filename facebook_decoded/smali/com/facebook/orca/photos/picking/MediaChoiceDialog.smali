.class public Lcom/facebook/orca/photos/picking/MediaChoiceDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MediaChoiceDialog.java"


# instance fields
.field private J:Ljava/lang/String;

.field private K:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

.field private N:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 63
    sget-object v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;->CANCEL:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->N:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->N:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/util/EnumSet;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;",
            ">;)",
            "Lcom/facebook/orca/photos/picking/MediaChoiceDialog;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;

    invoke-direct {v0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "visibleButtons"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->e(Landroid/os/Bundle;)V

    .line 71
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)Ljava/util/EnumMap;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->L:Ljava/util/EnumMap;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->N:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->b()Landroid/app/Dialog;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 92
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 93
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->J:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    sget v1, Lcom/facebook/orca/R$layout;->orca_media_choice_dialog:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 100
    new-instance v3, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$1;

    invoke-direct {v3, p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$1;-><init>(Lcom/facebook/orca/photos/picking/MediaChoiceDialog;)V

    .line 119
    invoke-static {}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->values()[Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 120
    #getter for: Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->buttonId:I
    invoke-static {v6}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->access$300(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v7, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->L:Ljava/util/EnumMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->K:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    .line 126
    iget-object v3, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->L:Ljava/util/EnumMap;

    invoke-virtual {v3, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_2
    return-object v2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->a(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->j()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->J:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->L:Ljava/util/EnumMap;

    .line 80
    const-string v1, "visibleButtons"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 82
    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->K:Ljava/util/EnumSet;

    .line 83
    return-void
.end method

.method public final a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->M:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    .line 144
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->e()V

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->M:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->M:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/MediaChoiceDialog;->N:Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;->a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Result;)V

    .line 136
    :cond_0
    return-void
.end method
