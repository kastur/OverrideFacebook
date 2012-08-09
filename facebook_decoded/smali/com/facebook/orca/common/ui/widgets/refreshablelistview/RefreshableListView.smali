.class public Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->a(I)V

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 55
    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 61
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a(III)V

    return-void
.end method


# virtual methods
.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 66
    return-void
.end method
