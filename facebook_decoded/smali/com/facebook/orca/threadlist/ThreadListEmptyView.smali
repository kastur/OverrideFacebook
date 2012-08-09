.class public Lcom/facebook/orca/threadlist/ThreadListEmptyView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadListEmptyView.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a()V

    .line 31
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a:Landroid/view/LayoutInflater;

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListEmptyView;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_thread_list_empty_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    return-void
.end method
