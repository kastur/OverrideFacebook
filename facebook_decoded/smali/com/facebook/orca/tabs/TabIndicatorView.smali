.class public Lcom/facebook/orca/tabs/TabIndicatorView;
.super Landroid/widget/LinearLayout;
.source "TabIndicatorView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    sget v1, Lcom/facebook/orca/R$layout;->orca_tab_view_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget v0, Lcom/facebook/orca/R$drawable;->orca_thread_view_tab_background:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->setBackgroundResource(I)V

    .line 36
    sget v0, Lcom/facebook/orca/R$id;->tab_indicator_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/tabs/TabIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->a:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->b:I

    .line 40
    sget v1, Lcom/facebook/orca/R$color;->grey33:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:I

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->b()V

    .line 43
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->isSelected()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->b:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    return-void

    .line 47
    :cond_0
    iget v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->c:I

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 53
    invoke-direct {p0}, Lcom/facebook/orca/tabs/TabIndicatorView;->b()V

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/tabs/TabIndicatorView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
