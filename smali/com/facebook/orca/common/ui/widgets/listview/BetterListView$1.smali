.class Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;
.super Ljava/lang/Object;
.source "BetterListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;III)V

    .line 52
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView$1;->a:Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;

    invoke-static {v0, p2}, Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;->a(Lcom/facebook/orca/common/ui/widgets/listview/BetterListView;I)V

    .line 44
    return-void
.end method
