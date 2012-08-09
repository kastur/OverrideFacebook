.class public Lcom/facebook/katana/RequestsActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "RequestsActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/NotNewNavEnabled;


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Z

.field private g:Lcom/facebook/katana/RequestsAdapter;

.field private h:Lcom/facebook/katana/binding/AppSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/RequestsActivity;->f:Z

    .line 30
    new-instance v0, Lcom/facebook/katana/RequestsActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/RequestsActivity$1;-><init>(Lcom/facebook/katana/RequestsActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/RequestsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/RequestsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->q()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/RequestsActivity;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/katana/RequestsActivity;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/facebook/katana/RequestsAdapter;

    iget-object v1, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/katana/RequestsAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    .line 129
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/RequestsActivity;->a(Landroid/widget/ListAdapter;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/RequestsAdapter;->a(Ljava/util/Map;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/katana/RequestsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/katana/RequestsActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 139
    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f0300f0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/RequestsActivity;->setContentView(I)V

    .line 57
    invoke-static {p0, v9}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 59
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_2

    const-string v0, "extra_frend_requests"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_frend_requests"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 64
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    array-length v6, v4

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v0, v4, v1

    .line 67
    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 68
    iget-wide v7, v0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, v5}, Lcom/facebook/katana/RequestsActivity;->a(Ljava/util/Map;)V

    .line 71
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/facebook/katana/RequestsActivity;->f()V

    .line 75
    :cond_1
    iput-boolean v9, p0, Lcom/facebook/katana/RequestsActivity;->f:Z

    .line 78
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "within_tab"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/RequestsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_3
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter;->a()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 102
    iput-boolean v1, p0, Lcom/facebook/katana/RequestsActivity;->f:Z

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    iget-boolean v0, v0, Lcom/facebook/katana/RequestsAdapter;->a:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->g:Lcom/facebook/katana/RequestsAdapter;

    iput-boolean v1, v0, Lcom/facebook/katana/RequestsAdapter;->a:Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/RequestsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 89
    iget-boolean v0, p0, Lcom/facebook/katana/RequestsActivity;->f:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/RequestsActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 94
    iget-object v2, p0, Lcom/facebook/katana/RequestsActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;J)Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->p()V

    .line 97
    :cond_0
    return-void
.end method
