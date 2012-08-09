.class Lcom/facebook/orca/threadlist/ThreadListActivity$2;
.super Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;
.source "ThreadListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/ThreadListActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$2;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListFragment$ThreadListEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 153
    if-nez p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListActivity$2;->a:Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListActivity;->b(Lcom/facebook/orca/threadlist/ThreadListActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/ScrollingActivityListener;

    .line 155
    invoke-virtual {v0, v1}, Lcom/facebook/orca/activity/ScrollingActivityListener;->a(Z)V

    goto :goto_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method
