.class final Lcom/facebook/katana/activity/faceweb/FacewebAssassin$1;
.super Ljava/lang/Object;
.source "FacewebAssassin.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->c()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 121
    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 126
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$FacewebFragmentRecord;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$FacewebFragmentRecord;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 127
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 134
    :cond_0
    invoke-static {}, Lcom/facebook/katana/activity/faceweb/FacewebAssassin;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 135
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$FacewebFragmentRecord;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebAssassin$FacewebFragmentRecord;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    .line 137
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    .line 139
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 143
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 125
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 148
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
