.class public Lcom/facebook/katana/activity/BaseFacebookListActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "BaseFacebookListActivity.java"


# instance fields
.field private e:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private f:Landroid/widget/ListAdapter;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/widget/AdapterView$OnItemClickListener;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->l:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/facebook/katana/activity/BaseFacebookListActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity$1;-><init>(Lcom/facebook/katana/activity/BaseFacebookListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->e:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->h:Landroid/os/Handler;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->i:Z

    .line 192
    new-instance v0, Lcom/facebook/katana/activity/BaseFacebookListActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity$2;-><init>(Lcom/facebook/katana/activity/BaseFacebookListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->j:Ljava/lang/Runnable;

    .line 199
    new-instance v0, Lcom/facebook/katana/activity/BaseFacebookListActivity$3;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity$3;-><init>(Lcom/facebook/katana/activity/BaseFacebookListActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->k:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/BaseFacebookListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->s()Landroid/widget/ListView;

    move-result-object v1

    .line 106
    instance-of v0, v1, Lcom/facebook/katana/view/FacebookListView;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 107
    check-cast v0, Lcom/facebook/katana/view/FacebookListView;

    iput-wide p1, v0, Lcom/facebook/katana/view/FacebookListView;->b:J

    .line 108
    check-cast v1, Lcom/facebook/katana/view/FacebookListView;

    iput-object p3, v1, Lcom/facebook/katana/view/FacebookListView;->a:Ljava/lang/String;

    .line 110
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/katana/service/method/PerfLogging$Step;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/facebook/katana/view/FacebookListView;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Lcom/facebook/katana/view/FacebookListView;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/view/FacebookListView;->setNextDrawStep(Lcom/facebook/katana/service/method/PerfLogging$Step;)V

    .line 118
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f()V

    .line 284
    iput-object p1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f:Landroid/widget/ListAdapter;

    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(IJ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 77
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-void
.end method

.method protected d(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 64
    if-eqz p1, :cond_0

    move v2, v1

    .line 65
    :goto_0
    if-eqz p1, :cond_1

    .line 67
    :goto_1
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void

    :cond_0
    move v2, v0

    .line 64
    goto :goto_0

    :cond_1
    move v0, v1

    .line 65
    goto :goto_1
.end method

.method public final e(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    return-void
.end method

.method protected final f(I)I
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected j()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 133
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->s()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onContentChanged()V

    .line 257
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    .line 260
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->e:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 270
    iget-boolean v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->i:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/widget/ListAdapter;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->i:Z

    .line 275
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f()V

    .line 233
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onStart()V

    .line 144
    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_STALE:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Lcom/facebook/katana/service/method/PerfLogging$Step;)V

    .line 145
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->n()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(JLjava/lang/String;)V

    .line 146
    return-void
.end method

.method protected final q()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->q()V

    .line 152
    sget-object v0, Lcom/facebook/katana/service/method/PerfLogging$Step;->UI_DRAWN_FRESH:Lcom/facebook/katana/service/method/PerfLogging$Step;

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Lcom/facebook/katana/service/method/PerfLogging$Step;)V

    .line 153
    return-void
.end method

.method public final s()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f()V

    .line 322
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public final t()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookListActivity;->f:Landroid/widget/ListAdapter;

    return-object v0
.end method
