.class public Lcom/facebook/katana/activity/BaseFacebookActivity;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "BaseFacebookActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/FacebookActivity;
.implements Lcom/facebook/katana/activity/NavBarHost;


# instance fields
.field private e:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->z()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 39
    instance-of v2, v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    if-eqz v2, :cond_0

    .line 40
    check-cast v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    .line 41
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find a FbActivityListener of type FacebookActivityDelegate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(III)V

    .line 197
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ILjava/lang/String;I)V

    .line 202
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;J)V

    .line 132
    return-void
.end method

.method public final a(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 137
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 192
    return-void
.end method

.method public final b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(IZ)V

    .line 212
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(I)V

    .line 82
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->b(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->g(Z)V

    .line 152
    return-void
.end method

.method public final d(I)V
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c(I)V

    .line 207
    return-void
.end method

.method public final declared-synchronized m()Lcom/facebook/katana/activity/FacebookActivityDelegate;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->f()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()J
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c()Z

    move-result v0

    return v0
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h()V

    .line 112
    return-void
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->i()V

    .line 117
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View;)V

    .line 107
    return-void
.end method
