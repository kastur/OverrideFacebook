.class Lcom/facebook/orca/threadlist/ThreadListActivity$1;
.super Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;
.source "ThreadListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$1;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$1;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->a(Lcom/facebook/orca/threadlist/ThreadListActivity;)Lcom/facebook/orca/threadlist/ThreadListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->E()V

    .line 138
    :cond_0
    return-void
.end method
