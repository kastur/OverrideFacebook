.class Lcom/facebook/orca/threadlist/ThreadListFragment$1;
.super Lcom/facebook/orca/activity/SafeBroadcastReceiver;
.source "ThreadListFragment.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadlist/ThreadListFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadlist/ThreadListFragment;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/activity/SafeBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 137
    const-string v0, "com.facebook.orca.ACTION_READ_THREAD_FOR_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "threadid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v1, v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v0, "actionid"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 144
    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->a(Lcom/facebook/orca/threadlist/ThreadListFragment;)Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadsCollection;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v2}, Lcom/facebook/orca/threadlist/ThreadListFragment;->c(Lcom/facebook/orca/threadlist/ThreadListFragment;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListFragment$1;->a:Lcom/facebook/orca/threadlist/ThreadListFragment;

    invoke-static {v0}, Lcom/facebook/orca/threadlist/ThreadListFragment;->b(Lcom/facebook/orca/threadlist/ThreadListFragment;)V

    goto :goto_0
.end method
