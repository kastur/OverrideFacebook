.class public Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "EmptyListViewItem.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a()V

    .line 41
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a:Landroid/view/LayoutInflater;

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_empty_list_view_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->empty_item_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->c:Landroid/widget/ProgressBar;

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->empty_item_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    return-void
.end method
