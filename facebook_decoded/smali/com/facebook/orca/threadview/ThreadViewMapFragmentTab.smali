.class public Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;
.super Landroid/support/v4/app/Fragment;
.source "ThreadViewMapFragmentTab.java"


# instance fields
.field private J:Landroid/app/LocalActivityManager;

.field private K:Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

.field private L:Landroid/widget/FrameLayout;

.field private M:Z

.field private N:Lcom/facebook/orca/threads/ThreadSummary;

.field private O:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->M:Z

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabShim;->b()Ljava/lang/Class;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    const-string v2, "map"

    invoke-virtual {v1, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    const-string v2, "map"

    invoke-virtual {v0, v2}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->M:Z

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->O:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->O:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->L:Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->L:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->N:Lcom/facebook/orca/threads/ThreadSummary;

    .line 119
    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->O:Lcom/google/common/collect/ImmutableList;

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->K:Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;

    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTab;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/google/common/collect/ImmutableList;)V

    .line 123
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a()V

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 55
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 78
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->u()V

    .line 60
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->a()V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 64
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->J:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewMapFragmentTab;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 84
    return-void
.end method
