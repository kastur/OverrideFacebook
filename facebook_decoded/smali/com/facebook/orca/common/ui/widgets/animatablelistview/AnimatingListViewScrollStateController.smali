.class public Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;
.super Ljava/lang/Object;
.source "AnimatingListViewScrollStateController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

.field private final b:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

.field private d:I

.field private final e:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

.field private final f:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->d:I

    .line 23
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController$1;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->e:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    .line 31
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController$2;-><init>(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;)V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 50
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    .line 51
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->b:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->b:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->e:Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter;->a(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->f:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 54
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    invoke-direct {v0}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->c:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    .line 55
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->d:I

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->c:Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;

    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/listview/ListViewScrollStateHelper;->a(Landroid/widget/ListView;)Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;->BOTTOM:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->setSelection(I)V

    .line 66
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->d:I

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListViewScrollStateController;->a()V

    return-void
.end method
