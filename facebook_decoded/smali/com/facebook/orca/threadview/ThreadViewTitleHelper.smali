.class public Lcom/facebook/orca/threadview/ThreadViewTitleHelper;
.super Ljava/lang/Object;
.source "ThreadViewTitleHelper.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/facebook/orca/threadview/ThreadTitleView;

.field private c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

.field private d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    .line 31
    invoke-interface {p1}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/facebook/orca/threadview/ThreadTitleView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/threadview/ThreadTitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->b:Lcom/facebook/orca/threadview/ThreadTitleView;

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->b:Lcom/facebook/orca/threadview/ThreadTitleView;

    invoke-interface {p1, v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->setCustomTitleView(Landroid/view/View;)V

    .line 45
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    new-instance v1, Lcom/facebook/orca/threadview/ThreadTitleHeader;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/orca/threadview/ThreadTitleHeader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    .line 39
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    check-cast p1, Landroid/view/View;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->b:Lcom/facebook/orca/threadview/ThreadTitleView;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->b:Lcom/facebook/orca/threadview/ThreadTitleView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->c:Lcom/facebook/orca/threadview/ThreadTitleHeader;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadTitleHeader;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->d:Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;

    invoke-interface {v0}, Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;->b:Lcom/facebook/orca/threadview/ThreadTitleView;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threadview/ThreadTitleView;->a(Z)V

    .line 59
    :cond_0
    return-void
.end method
