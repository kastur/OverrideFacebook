.class public Lcom/facebook/orca/creation/StartThreadTabIndicatorView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "StartThreadTabIndicatorView.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    sget v1, Lcom/facebook/orca/R$layout;->orca_start_thread_tab_indicator:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    sget v0, Lcom/facebook/orca/R$drawable;->orca_tab_view_background:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->setBackgroundResource(I)V

    .line 27
    sget v0, Lcom/facebook/orca/R$id;->tab_indicator_text:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a:Landroid/widget/TextView;

    .line 28
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/creation/StartThreadTabIndicatorView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
