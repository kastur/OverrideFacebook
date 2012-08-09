.class public Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;
.super Landroid/widget/ListView;
.source "BetterListView.java"


# instance fields
.field private a:Landroid/widget/AbsListView$OnScrollListener;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;-><init>(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 54
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 61
    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method private a(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 70
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a(III)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 77
    return-void
.end method
